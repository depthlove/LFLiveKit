
[![Build Status](https://travis-ci.org/chenliming777/LFLiveKit.svg)](https://travis-ci.org/chenliming777/LFLiveKit)

LFLiveKit

	LFLiveKit IOS mobile phone push code，Default format support RTMP，At the same time, the structure is very easy to extend.

Podfile
	To integrate LFLiveKit into your Xcode project using CocoaPods, specify it in your Podfile:
	
	source 'https://github.com/CocoaPods/Specs.git'
	platform :ios, '8.0'
	pod 'LFLiveKit'
	
	Then, run the following command:
	$ pod install


Functional

	Background recording
	Support horizontal vertical recording
	GPUImage Beauty
	H264 Hard coding
	AAC Hard coding
	Weak network lost frame
	Dynamic switching rate
	Audio configuration
	Video configuration
	RTMP Transport
	Switch camera
	Audio Mute
	Support Send Buffer
  

Architecture

	capture: LFAudioCapture and  LFVideoCapture
	encode:  LFHardwareAudioEncoder and LFHardwareVideoEncoder
	publish: LFStreamRtmpSocket
	
Usage
	
	- (LFLiveSession*)session{
    if(!_session){
        _session = [[LFLiveSession alloc] initWithAudioConfiguration:		   [LFLiveAudioConfiguration defaultConfiguration] videoConfiguration:			[LFLiveVideoConfiguration defaultConfiguration]];
        _session.running = YES;
        _session.preView = self;
    }
    return _session;
	}
	
	LFLiveStreamInfo *streamInfo = [LFLiveStreamInfo new];
	streamInfo.url = @"your server rtmp url";
	[self.session startLive:streamInfo];
	[self.session stopLive];
	
	CallBack:
	- (void)liveSession:(nullable LFLiveSession *)session liveStateDidChange: (LFLiveState)state;
	- (void)liveSession:(nullable LFLiveSession *)session debugInfo:(nullable LFLiveDebug*)debugInfo;
	- (void)liveSession:(nullable LFLiveSession*)session errorCode:(LFLiveSocketErrorCode)errorCode;
	
 License
 
 	LFLiveKit is released under the MIT license. See LICENSE for details.
	






