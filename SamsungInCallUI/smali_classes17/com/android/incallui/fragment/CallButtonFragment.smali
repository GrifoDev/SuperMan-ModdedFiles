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

    const v3, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mSelectedBluetoothItem:Landroid/view/View;

    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_BUTTON_SCALE:F

    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_SUM:F

    iput v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UPPER_TOP:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UNDER_TOP:F

    iput v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_TOP:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_BOTTOM:F

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->resetBluetoothDeviceList()V

    return-void
.end method

.method private isMultipleBluetoothConnected()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

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

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "CallButtonFragment"

    const-string v4, "bluetoothHeadset is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private manageBluetoothClicked()V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->isSupported(I)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/CallButtonFragment;->setAudioMode(I)V

    goto :goto_0
.end method

.method private resetBluetoothDeviceList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    return-void
.end method

.method private showBluetoothDeviceList()V
    .locals 12

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    const-string v1, "CallButtonFragment"

    const-string v2, "Bluetooth List Popup is already inflated"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v1, "CallButtonFragment"

    const-string v2, "No Bluetooth Headset is connected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "CallButtonFragment"

    const-string v2, "bluetooth list is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v1, 0x1

    if-gt v8, v1, :cond_4

    const-string v1, "CallButtonFragment"

    const-string v2, "only 1 BT device exists"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090098

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-array v4, v8, [Ljava/lang/String;

    new-array v5, v8, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v9}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    :cond_5
    aput-object v11, v4, v10

    invoke-static {v9}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getBtClassDrawable(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    aput v1, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04009f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;Landroid/content/Context;I[Ljava/lang/String;[I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900c8

    new-instance v2, Lcom/android/incallui/fragment/CallButtonFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/CallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/CallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/CallButtonFragment$3;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment$4;-><init>(Lcom/android/incallui/fragment/CallButtonFragment;Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public aMEndButtonClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    return-void
.end method

.method public addCallClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    return-void
.end method

.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForManager(ZZ)V
    .locals 0

    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public animateForRevealEndCallButton()V
    .locals 0

    return-void
.end method

.method public animateForRevealViews()V
    .locals 0

    return-void
.end method

.method public bluetoothClicked()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v2, "CallButtonFragment"

    const-string v3, "bluetoothClicked()..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "support_bluetooth_multi_profile"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->isMultipleBluetoothConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->showBluetoothDeviceList()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->manageBluetoothClicked()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->manageBluetoothClicked()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    sget v3, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public enableButton(IZ)V
    .locals 0

    return-void
.end method

.method public enableDialpadButton(Z)V
    .locals 0

    return-void
.end method

.method public enableMute(Z)V
    .locals 0

    return-void
.end method

.method public extraVolumeClicked()V
    .locals 0

    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getEndCallButtonDiameter()I
    .locals 2

    const-string v0, "CallButtonFragment"

    const-string v1, "getEndCallButtonDiameter"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getEndCallButtonPivot()[I
    .locals 2

    const-string v0, "CallButtonFragment"

    const-string v1, "getEndCallButtonPivot"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraVolumeButton()Landroid/widget/ToggleButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public getUpperViewMarginTop()I
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public getVoiceCallButtonsGap()I
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v2

    int-to-float v0, v2

    sub-float v2, v0, v1

    float-to-int v2, v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    return-void
.end method

.method protected isAudio(I)Z
    .locals 1

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSupported(I)Z
    .locals 1

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

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "CallButtonFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPress()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "CallButtonFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->updateNavigationBar()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    return-void
.end method

.method public queryForSwappedCall()V
    .locals 0

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0

    return-void
.end method

.method public returnButtonsForManager(Z)V
    .locals 0

    return-void
.end method

.method public setAudio(I)V
    .locals 0

    return-void
.end method

.method public setAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    return-void
.end method

.method public setCallButtonContainerVisibility(Z)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCameraSwitched(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFocusInCallButton(Z)V
    .locals 0

    return-void
.end method

.method public setHold(Z)V
    .locals 0

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 0

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallButtonFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupRcsCallButtons()V
    .locals 0

    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.ims.IMSConferenceCallActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "DEL_USER_FRM_CONF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public switchCameraClicked()V
    .locals 0

    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 0

    return-void
.end method

.method public updateAudioButton()V
    .locals 0

    return-void
.end method

.method public updateButtonIndicatorArea()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment;->showButtonIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallButtonFragment;->showButtonIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateButtonStates()V
    .locals 0

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 0

    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateDiapadButton()V
    .locals 0

    return-void
.end method

.method public updateExtraVolumeButton()V
    .locals 0

    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0

    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateNavigationBar()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public updateRecordButton(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CallButtonFragment"

    const-string v3, "updateRecordButton: answer animation is running"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public updateSwisButtonLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "CallButtonFragment"

    const-string v11, "updateVerticalMargin"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a013a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0262

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    const/4 v7, 0x0

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

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0416

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

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

    int-to-float v10, v1

    iget v11, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_BUTTON_SCALE:F

    mul-float/2addr v10, v11

    float-to-int v7, v10

    :cond_3
    mul-int/lit8 v10, v2, 0x2

    sub-int v10, v7, v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    iget v11, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_SUM:F

    div-float v6, v10, v11

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

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UPPER_TOP:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_UNDER_TOP:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, p0, Lcom/android/incallui/fragment/CallButtonFragment;->INCALL_MARGIN_ENDCALL_BOTTOM:F

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public updateVideoRecordButton()V
    .locals 0

    return-void
.end method
