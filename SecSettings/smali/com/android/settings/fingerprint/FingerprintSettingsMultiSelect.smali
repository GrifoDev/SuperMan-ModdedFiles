.class public Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;,
        Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;,
        Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;
    }
.end annotation


# static fields
.field private static mSelectedId:I


# instance fields
.field private SCREEN_ID_REMOVE:I

.field private SCREEN_ID_RENAME:I

.field checkBoxRunnable:Ljava/lang/Runnable;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixbyOpValue:I

.field private mCallByBixby:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

.field private mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInMultiWindowMode:Z

.field private mIsKeepEnrollSession:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOriginalContentStart:I

.field private mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mSelectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_REMOVE:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_RENAME:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mBixbyOpValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mCallByBixby:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteAllFingerPrint()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mBixbyOpValue:I

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mCallByBixby:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz v4, :cond_0

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    move v2, v0

    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null after sorting"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/support/v7/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null before sorting"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    return v1
.end method

.method private backToFingerlist()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAndSessionEnd() : mIsKeepEnrollSession -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() : Null Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v6}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->closeAllDialog()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->finishFingerprintSettings()V

    return-void

    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->setTargetFragment(Landroid/app/Fragment;I)V

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0, v5, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    if-nez v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    invoke-virtual {v1, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v3, v5, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "FpstFingerprintSettingsMultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFinishDeleteOperation remainingNum index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", remainingNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    if-nez v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private clearmSelectionChecklist()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private closeAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150070

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->setFingerprintPreference()V

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v3

    const-string/jumbo v6, "FpstFingerprintSettingsMultiSelect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v9, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isFingerprintEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isIrisEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_1

    if-ne v3, v9, :cond_3

    const v6, 0x7f120eed

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const v6, 0x7f120ef0

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f120eec

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_REMOVE:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;

    invoke-direct {v7, p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;ZZ)V

    invoke-direct {v6, v5, v4, v0, v7}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "fpstDeleteAllDialog"

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const v6, 0x7f120eee

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const v6, 0x7f120b44

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v9, :cond_5

    const v6, 0x7f120b40

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const v7, 0x7f120b5b

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->resetFingerprintSupportingFeatures()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v2, "FpstFingerprintSettingsMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteFingerprintSequencially delete index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disableContentsStart()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x10201b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "setContentsStart mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableContentsStart()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x10201b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "setContentsStart mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private finishSelectMode()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->clearmSelectionChecklist()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->backToFingerlist()V

    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_secret_box"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->appLockUsingFingerprint()Z

    move-result v0

    goto :goto_0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isFingerprintEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isIrisEnabled()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNotEnoughSpace()Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    return v6
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_samsungaccount_confirmed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->setFingerprintScreenLockDisable()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setFingerprintPreference()V
    .locals 1

    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method private showAlertMessage(Z)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const v3, 0x7f120eea

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120eeb

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v3, 0x0

    return v3

    :cond_0
    const v3, 0x7f120ee8

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120ee9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateActionbarState()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "updateActionbarState: no custom actionbar"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121856

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isNotEnoughSpace()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_3
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f121857

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f121847

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public deleteFingerprint()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v2, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1040488

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v5

    :cond_2
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isIrisEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteAllFingerPrint()V

    :goto_0
    return v5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v5, :cond_5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->showAlertMessage(Z)Z

    return v5

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->showAlertMessage(Z)Z

    return v5

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_REMOVE:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    if-ne v0, v5, :cond_7

    const v2, 0x7f120b41

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-direct {v2, v1, v3}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "fpstDeleteSomeDialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f120b42

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected finishFingerprintSettings()V
    .locals 3

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings() : Null Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120d00

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2019

    return v0
.end method

.method public onBackKey()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "=====onBackKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "FpstFingerprintSettingsMultiSelect"

    const v5, 0x7f12037a

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    const-string/jumbo v3, "FpstFingerprintSettingsMultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate selectedIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v3, "callby_bixby"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "callby_bixby"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mCallByBixby:Z

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mCallByBixby:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "bixby_opvalue"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "bixby_opvalue"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mBixbyOpValue:I

    :cond_3
    const-string/jumbo v3, "FpstFingerprintSettingsMultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate mCallByBixby["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mCallByBixby:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], mBixbyOpValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mBixbyOpValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->updatePreferences()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0257

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_REMOVE:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_RENAME:I

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 17

    const-string/jumbo v12, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v13, "onCreateOptionsMenu"

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v12}, Landroid/view/Menu;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0d0120

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    const/16 v13, 0x10

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    new-instance v13, Landroid/app/ActionBar$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x10

    invoke-direct/range {v13 .. v16}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v6, v13}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_0
    const v12, 0x7f0a05dc

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v12, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f0a08e5

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const-string/jumbo v12, "overlay"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "current_sec_active_themepackage"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-interface {v5, v3, v12}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    :goto_1
    const-string/jumbo v12, "FpstFingerprintSettingsMultiSelect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "themePackageName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", currentPackageName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", overlayedThemeCount : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1

    if-lez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06001e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v13, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f0a05dd

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/Toolbar;

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0702e2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0702e0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v15, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v12, v9}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const v15, 0x7f120bb4

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const v15, 0x7f1205fe

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    sget v12, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroid/app/ActionBar;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v12, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v13, "updateSelectMenu null!!"

    invoke-static {v12, v13}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->disableContentsStart()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120b60

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->SCREEN_ID_RENAME:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->renameFingerPrint()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprint()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04ff

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->enableContentsStart()V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->setDivider()V

    return-void
.end method

.method public removeFingerPrintPlusIfNeeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "PREV_FINGER_PLUS_ID"

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    if-gt v1, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "PREV_FINGER_PLUS_ID"

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "FINGERPRINT_PLUS_STATE"

    invoke-static {v4, v5, v7, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public renameFingerPrint()V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;I)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    const-string/jumbo v4, "FPRN"

    const/16 v5, -0x3e8

    invoke-static {v2, v3, v4, v6, v5}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDivider()V
    .locals 13

    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v9, 0x1

    :goto_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v14/preference/R$styleable;->PreferenceFragment:[I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040159

    const v11, 0x1010506

    invoke-static {v4, v5, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v3, v4, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-nez v9, :cond_3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v7, v12, :cond_0

    invoke-super {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->setDividerHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw v2
.end method
