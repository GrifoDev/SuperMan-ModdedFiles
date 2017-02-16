.class public Lcom/android/incallui/fragment/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/CallButtonUi;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;,
        Lcom/android/incallui/fragment/CallButtonFragment$Buttons;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonUi;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;"
    }
.end annotation


# static fields
.field public static final ADD_USER_TO_CONF:Ljava/lang/String; = "ADD_USER_TO_CONF"

.field private static final BUTTON_HIDDEN:I = 0x2

.field private static final BUTTON_MENU:I = 0x3

.field private static final BUTTON_VISIBLE:I = 0x1

.field public static final CONF_TYPE_VOICE:Ljava/lang/String; = "CONF_TYPE_VOICE"

.field public static final DEL_USER_FRM_CONF:Ljava/lang/String; = "DEL_USER_FRM_CONF"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CallButtonFragment"

.field public static final NOT_SELECTED:I = -0x1

.field public static final SIDE_LEFT:I = 0x0

.field public static final SIDE_RIGHT:I = 0x1


# instance fields
.field protected INCALL_BUTTON_SCALE:F

.field protected INCALL_MARGIN_ENDCALL_BOTTOM:F

.field protected INCALL_MARGIN_ENDCALL_TOP:F

.field protected INCALL_MARGIN_SUM:F

.field protected INCALL_MARGIN_UNDER_TOP:F

.field protected INCALL_MARGIN_UPPER_TOP:F

.field protected mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mBluetoothButton:Landroid/widget/ToggleButton;

.field protected mBluetoothListPopup:Landroid/app/Dialog;

.field private mButtonMaxVisible:I

.field private mButtonVisibilityMap:Landroid/util/SparseIntArray;

.field protected mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndCallButton:Landroid/widget/ImageButton;

.field protected mEndCallButtonContainer:Landroid/view/View;

.field protected mExtraVolumeButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonContainer:Landroid/view/View;

.field protected mInCallButtonsUnder:Landroid/view/View;

.field protected mInCallButtonsUpper:Landroid/view/View;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field protected mMuteButton:Landroid/widget/ToggleButton;

.field protected mNavigationBarArea:Landroid/view/View;

.field protected mRecordButton:Landroid/widget/ToggleButton;

.field protected mRecordButtonStub:Landroid/view/ViewStub;

.field protected mSelectedBluetoothItem:Landroid/view/View;

.field protected startPaddingAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    .line 146
    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    .line 147
    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    .line 148
    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mSelectedBluetoothItem:Landroid/view/View;

    .line 155
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_BUTTON_SCALE:F

    .line 156
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_SUM:F

    .line 157
    iput v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UPPER_TOP:F

    .line 158
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UNDER_TOP:F

    .line 159
    iput v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_TOP:F

    .line 160
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_BOTTOM:F

    .line 162
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallButtonFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->resetBluetoothDeviceList()V

    return-void
.end method

.method private isMultipleBluetoothConnected()Z
    .locals 6

    .prologue
    .line 630
    const/4 v2, 0x0

    .line 631
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 632
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 633
    .local v0, "bluetoothHeadset":Landroid/bluetooth/BluetoothHeadset;
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 635
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    .line 636
    const-string v3, "CallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 638
    const/4 v2, 0x1

    .line 646
    .end local v0    # "bluetoothHeadset":Landroid/bluetooth/BluetoothHeadset;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return v2

    .line 642
    .restart local v0    # "bluetoothHeadset":Landroid/bluetooth/BluetoothHeadset;
    :cond_1
    const-string v3, "CallButtonFragment"

    const-string v4, "bluetoothHeadset is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private manageBluetoothClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 650
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->isSupported(I)Z

    move-result v1

    .line 652
    .local v1, "usingHeadset":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isAliveVideoCall()Z

    move-result v0

    .line 654
    .local v0, "isAliveVideoCall":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 655
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    .line 662
    .end local v0    # "isAliveVideoCall":Z
    .end local v1    # "usingHeadset":Z
    :goto_0
    return-void

    .line 657
    .restart local v0    # "isAliveVideoCall":Z
    .restart local v1    # "usingHeadset":Z
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    goto :goto_0

    .line 660
    .end local v0    # "isAliveVideoCall":Z
    .end local v1    # "usingHeadset":Z
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    goto :goto_0
.end method

.method private resetBluetoothDeviceList()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    .line 627
    return-void
.end method

.method private showBluetoothDeviceList()V
    .locals 12

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 523
    const-string v1, "CallButtonFragment"

    const-string v2, "Bluetooth List Popup is already inflated"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v6

    .line 528
    .local v6, "bluetoothHeadset":Landroid/bluetooth/BluetoothHeadset;
    if-nez v6, :cond_2

    .line 529
    const-string v1, "CallButtonFragment"

    const-string v2, "No Bluetooth Headset is connected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    .line 534
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 535
    const-string v1, "CallButtonFragment"

    const-string v2, "bluetooth list is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 540
    .local v8, "count":I
    const/4 v1, 0x1

    if-gt v8, v1, :cond_4

    .line 541
    const-string v1, "CallButtonFragment"

    const-string v2, "only 1 BT device exists"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090096

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 547
    new-array v4, v8, [Ljava/lang/String;

    .line 548
    .local v4, "eqListEntries":[Ljava/lang/String;
    new-array v5, v8, [I

    .line 549
    .local v5, "eqIconListEntries":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 550
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 552
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    .line 553
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 554
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 556
    :cond_5
    aput-object v11, v4, v10

    .line 557
    invoke-static {v9}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getBtClassDrawable(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    aput v1, v5, v10

    .line 549
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 560
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v11    # "name":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    .line 561
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04009f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;Landroid/content/Context;I[Ljava/lang/String;[I)V

    .line 562
    .local v0, "adapter":Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    const v1, 0x7f0900c6

    new-instance v2, Lcom/android/incallui/fragment/CallButtonFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/CallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/CallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/CallButtonFragment$3;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment$4;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    .line 620
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public aMEndButtonClick()V
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    .line 822
    return-void
.end method

.method public addCallClicked()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    .line 495
    return-void
.end method

.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public animateForManager(ZZ)V
    .locals 0
    .param p1, "showManager"    # Z
    .param p2, "direct"    # Z

    .prologue
    .line 458
    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 449
    return-void
.end method

.method public animateForRevealEndCallButton()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method public animateForRevealViews()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public bluetoothClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 665
    const-string v2, "CallButtonFragment"

    const-string v3, "bluetoothClicked()..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    const-string v2, "support_bluetooth_multi_profile"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->isMultipleBluetoothConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->showBluetoothDeviceList()V

    .line 695
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->manageBluetoothClicked()V

    goto :goto_0

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->manageBluetoothClicked()V

    goto :goto_0

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 682
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 685
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 687
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    sget v3, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const-string v2, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 446
    :cond_0
    return-void
.end method

.method public enableButton(IZ)V
    .locals 0
    .param p1, "buttonId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 375
    return-void
.end method

.method public enableDialpadButton(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 452
    return-void
.end method

.method public enableMute(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 387
    return-void
.end method

.method public extraVolumeClicked()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getEndCallButtonDiameter()I
    .locals 2

    .prologue
    .line 847
    const-string v0, "CallButtonFragment"

    const-string v1, "getEndCallButtonDiameter"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public getEndCallButtonPivot()[I
    .locals 2

    .prologue
    .line 841
    const-string v0, "CallButtonFragment"

    const-string v1, "getEndCallButtonPivot"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonUi;
    .locals 0

    .prologue
    .line 297
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public getUpperViewMarginTop()I
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 866
    :goto_0
    return v1

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 866
    .local v0, "upperViewMargin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public getVoiceCallButtonsGap()I
    .locals 4

    .prologue
    .line 800
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 802
    .local v1, "startY":F
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v2

    int-to-float v0, v2

    .line 803
    .local v0, "endY":F
    sub-float v2, v0, v1

    float-to-int v2, v2

    .line 805
    .end local v0    # "endY":F
    .end local v1    # "startY":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method protected isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToAnimateForOutgoingCall()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 330
    const-string v0, "CallButtonFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onBackPress()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 304
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    const-string v1, "CallButtonFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    .line 313
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 774
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    .line 354
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 359
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->updateNavigationBar()V

    .line 360
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 365
    return-void
.end method

.method public queryForSwappedCall()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 455
    return-void
.end method

.method public returnButtonsForManager(Z)V
    .locals 0
    .param p1, "showManager"    # Z

    .prologue
    .line 461
    return-void
.end method

.method public setAudio(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 405
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 499
    return-void
.end method

.method public setCallButtonContainerVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 810
    if-eqz p1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCameraSwitched(Z)V
    .locals 0
    .param p1, "isBackFacingCamera"    # Z

    .prologue
    .line 396
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 379
    return-void
.end method

.method public setFocusInCallButton(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 825
    return-void
.end method

.method public setHold(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 391
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 383
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 439
    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 401
    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "CallButtonFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupRcsCallButtons()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 698
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 699
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.ims.IMSConferenceCallActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 700
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    :cond_0
    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    const-string v2, "DEL_USER_FRM_CONF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showButton(IZ)V
    .locals 0
    .param p1, "buttonId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 370
    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 787
    :cond_0
    return-void

    .line 785
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 748
    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 828
    return-void
.end method

.method public switchCameraClicked()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public updateAudioButton()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public updateButtonIndicatorArea()V
    .locals 1

    .prologue
    .line 790
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment;->showButtonIndicatorArea(Z)V

    .line 794
    :goto_0
    return-void

    .line 793
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment;->showButtonIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateButtonStates()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 487
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 0
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 745
    return-void
.end method

.method public updateDiapadButton()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method

.method public updateExtraVolumeButton()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 832
    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 491
    return-void
.end method

.method public updateNavigationBar()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "isLandscape":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    .line 856
    .local v1, "isMultiWindow":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 859
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 861
    .end local v0    # "isLandscape":Z
    .end local v1    # "isMultiWindow":Z
    :cond_3
    return-void

    .restart local v0    # "isLandscape":Z
    .restart local v1    # "isMultiWindow":Z
    :cond_4
    move v0, v2

    .line 857
    goto :goto_0
.end method

.method public updateRecordButton(Z)V
    .locals 4
    .param p1, "canRecord"    # Z

    .prologue
    .line 757
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 758
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 760
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 761
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    const-string v2, "CallButtonFragment"

    const-string v3, "updateRecordButton: answer animation is running"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 p1, 0x0

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 767
    .end local v0    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_1
    return-void
.end method

.method public updateSwisButtonLayout(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 739
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 0
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 736
    return-void
.end method

.method public updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 13
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "upperView"    # Landroid/view/View;
    .param p3, "underView"    # Landroid/view/View;
    .param p4, "endCallView"    # Landroid/view/View;

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const-string v10, "CallButtonFragment"

    const-string v11, "updateVerticalMargin"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a013b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    .line 874
    .local v2, "buttonViewHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0266

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 875
    .local v4, "endCallButtonHeight":I
    const/4 v7, 0x0

    .line 876
    .local v7, "parentViewHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 877
    const/4 v3, 0x0

    .line 878
    .local v3, "decorCaptionViewHeight":I
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 879
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a041b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    sub-int v1, v10, v3

    .line 882
    .local v1, "activityHeight":I
    int-to-float v10, v1

    iget v11, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_BUTTON_SCALE:F

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 884
    .end local v1    # "activityHeight":I
    .end local v3    # "decorCaptionViewHeight":I
    :cond_3
    mul-int/lit8 v10, v2, 0x2

    sub-int v10, v7, v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    iget v11, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_SUM:F

    div-float v6, v10, v11

    .line 886
    .local v6, "marginHeight":F
    const-string v10, "CallButtonFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateVerticalMargin parentViewHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", marginHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 889
    .local v9, "upperViewMargin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UPPER_TOP:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 890
    invoke-virtual {p2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 893
    .local v8, "underViewMargin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UNDER_TOP:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 894
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    if-eqz p4, :cond_0

    .line 897
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 898
    .local v5, "endCallViewMargin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_BOTTOM:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 899
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public updateVideoRecordButton()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method
