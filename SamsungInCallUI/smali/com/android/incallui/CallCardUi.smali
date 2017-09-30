.class public interface abstract Lcom/android/incallui/CallCardUi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/Ui;


# virtual methods
.method public abstract animateForAnswerCall()V
.end method

.method public abstract animateForHideManager(Z)V
.end method

.method public abstract animateForMoveDialpad(Z)V
.end method

.method public abstract animateForNewOutgoingCall()V
.end method

.method public abstract animateForNewOutgoingCall(Landroid/graphics/Point;)V
.end method

.method public abstract animateForShow()V
.end method

.method public abstract changeCallCardForAM(I)V
.end method

.method public abstract changeViewForMoveDialpad(Z)V
.end method

.method public abstract clearAMView()V
.end method

.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract enableMenu(Z)V
.end method

.method public abstract enableSwapButton(Z)V
.end method

.method public abstract getCurrentSecondaryCallName()Ljava/lang/String;
.end method

.method public abstract getInCallMenu()Lcom/android/incallui/InCallMenu;
.end method

.method public abstract getPrimaryPhotoView()Landroid/view/View;
.end method

.method public abstract getSpaceBesideCallCard()F
.end method

.method public abstract isActivityCreated()Z
.end method

.method public abstract isAvailableFullScreenMode()Z
.end method

.method public abstract isCallSubjectVisible()Z
.end method

.method public abstract isDisplayingAgif()Z
.end method

.method public abstract isInExceptionArea(II)Z
.end method

.method public abstract isManageConferenceVisible()Z
.end method

.method public abstract isMenuShowing()Z
.end method

.method public abstract isPrimaryVisible()Z
.end method

.method public abstract isShowVZWInfoBanner()Z
.end method

.method public abstract isShowingCameraEffectUi()Z
.end method

.method public abstract isSwapProcessing()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract manageAnswerMemoRecord(Z)V
.end method

.method public abstract manageMultiTouchStub(Z)V
.end method

.method public abstract manageRecordInfo(ZZ)V
.end method

.method public abstract needToShowMenu()Z
.end method

.method public abstract needToShowVolumeButton()Z
.end method

.method public abstract onCoverStateChanged(Z)V
.end method

.method public abstract onDialpadVisiblityChange(Z)V
.end method

.method public abstract onSelectAgifContents(Landroid/net/Uri;Z)V
.end method

.method public abstract onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract resetAnswerCallAnimator()V
.end method

.method public abstract resetRevealAnimator()V
.end method

.method public abstract sendAccessibilityAnnouncement()V
.end method

.method public abstract setAMView(Z)V
.end method

.method public abstract setCallCardPriority(I)V
.end method

.method public abstract setCallCardVisible(Z)V
.end method

.method public abstract setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
.end method

.method public abstract setCallSubject(Ljava/lang/String;)V
.end method

.method public abstract setCallbackNumber(Ljava/lang/String;Z)V
.end method

.method public abstract setContactContextContent(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setContactContextTitle(Landroid/view/View;)V
.end method

.method public abstract setEndCallButtonEnabled(ZZ)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZJ)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryCityId(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setPrimaryLabel(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryName(Ljava/lang/String;Z)V
.end method

.method public abstract setPrimaryPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryVisible(Z)V
.end method

.method public abstract setPrimaryVisibleByDialpad(Z)V
.end method

.method public abstract setProfileContent(Ljava/lang/String;)V
.end method

.method public abstract setProfileForwardingContent(Ljava/lang/String;)V
.end method

.method public abstract setProgressSpinnerVisible(Z)V
.end method

.method public abstract setRecordTimeUpdate(J)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
.end method

.method public abstract setSecondaryCallElapsedTime(ZJ)V
.end method

.method public abstract setSecondaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setSecondaryInfoVisible(Z)V
.end method

.method public abstract setViewStatePostSplit()V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showCallCardIndicatorArea(Z)V
.end method

.method public abstract showCameraEffectLayout(Z)V
.end method

.method public abstract showConferenceStateInfoBanner(ZLjava/lang/String;)V
.end method

.method public abstract showContactContext(Z)V
.end method

.method public abstract showForwardIndicator(Z)V
.end method

.method public abstract showHdAudioIndicator(Z)V
.end method

.method public abstract showManageConferenceCallButton(Z)V
.end method

.method public abstract showMenu(Z)V
.end method

.method public abstract showModifyStateInfoBanner(ZLjava/lang/String;I)V
.end method

.method public abstract showModifyStateInfoBanner(ZLjava/lang/String;[Ljava/lang/String;I)V
.end method

.method public abstract showModifySwitchButtonAM()V
.end method

.method public abstract showNoteSentToast()V
.end method

.method public abstract showRecordingInfo(ZZ)V
.end method

.method public abstract showVideoStateMessageUi(Ljava/lang/String;)V
.end method

.method public abstract showVolumeButton(Z)V
.end method

.method public abstract updateAgifContainer(Z)V
.end method

.method public abstract updateAgifImage()V
.end method

.method public abstract updateBelowButtonMargin(Z)V
.end method

.method public abstract updateCallButtons()V
.end method

.method public abstract updateCallCard(Lcom/android/incallui/Call;)V
.end method

.method public abstract updateCallerInfoOrgView(Ljava/lang/String;)V
.end method

.method public abstract updateCameraEffectLayout()V
.end method

.method public abstract updateDisplayChildCallChanged()V
.end method

.method public abstract updateEri()V
.end method

.method public abstract updateFullscreenMode(Z)V
.end method

.method public abstract updateIncomingHideButton()V
.end method

.method public abstract updateInviteGroupVideoButtonLayout()V
.end method

.method public abstract updateJanskyInfo()V
.end method

.method public abstract updateNavigationBar()V
.end method

.method public abstract updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
.end method

.method public abstract updateRecordTime(Z)V
.end method

.method public abstract updateSmartCallImageInfo()V
.end method

.method public abstract updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
.end method

.method public abstract updateSmartCallProviderImageInfo()V
.end method

.method public abstract updateSpamCallInfo(Lcom/android/incallui/Call;)V
.end method

.method public abstract updateVolteView(I)V
.end method
