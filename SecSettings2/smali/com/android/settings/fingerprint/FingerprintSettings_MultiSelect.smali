.class public Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static selectedId:I


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field private actionBar:Landroid/app/ActionBar;

.field checkBoxRunnable:Ljava/lang/Runnable;

.field private isKeepEnrollSession:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAllDialog:Landroid/app/AlertDialog;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mUserId:I

.field private originalContentStart:I

.field private selectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private twselectedChecklist:[Z

.field private twselectionChecklist:[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    move v2, v0

    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

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

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

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

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "applock_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private backToFingerlist()V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backToFingerlist stack count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() : Null Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v5}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFingerprintSettings()V

    return-void

    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

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

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTargetFragment(Landroid/app/Fragment;I)V

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0, v4, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkDeleteAllFingerprint()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintUsageNQuality(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return v10

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "%s\n%s\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b06a1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b1707

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b06a4

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

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

    return v9
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const v3, 0x7f0b06a3

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b06a4

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v4
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "persona"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v5, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whole finger set using in KNOX was selected! PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_0
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " doesn\'t use fingerprint index."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Unable to access SemPersonaManager."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private checkFingerprintUsageNQuality(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "checkFingerprintUsageNQuality : Unable to delete Fingerprint due to DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    return v3
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

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

    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

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

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

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

.method private clearselectionChecklist()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private copyTwselectionChecklist()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintPreference()V

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 12

    const v11, 0x7f0b06a2

    const v10, 0x7f0b042a

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "passwordQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v7, :cond_2

    const v4, 0x7f0b069d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :sswitch_0
    const v4, 0x7f0b1193

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v4, 0x7f0b1195

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v4, 0x7f0b1191

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v4, 0x7f0b0274

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b069e

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v2, v7, :cond_4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    const v5, 0x7f0b0699

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v7

    const v5, 0x7f0b069a

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    if-ne v2, v7, :cond_6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    const v5, 0x7f0b069b

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v7

    const v5, 0x7f0b069c

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_a

    if-ne v2, v7, :cond_9

    const v4, 0x7f0b068f

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_8
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_9
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b0690

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    if-ne v2, v7, :cond_c

    const v4, 0x7f0b068d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$18;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$18;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_b
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_c
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b068e

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->resetFingerprintSupportingFeatures()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

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

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSelectMode()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->clearselectionChecklist()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->backToFingerlist()V

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

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_secret_box"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->appLockUsingFingerprint()Z

    move-result v0

    goto :goto_0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v5, :cond_0

    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v8, "isSelectedWholeFingersUsedKnox: Unable to access SemPersonaManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-lez v6, :cond_1

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    aget v8, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v8, v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    array-length v7, v0

    if-ne v7, v4, :cond_6

    const/4 v7, 0x1

    return v7

    :cond_6
    return v10
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

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

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_secret_box"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_fingerIndex"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintScreenLockDisable()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "applock_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "applock_lock_type"

    add-int/lit8 v3, v0, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private setContentsStart(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020478

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onCreateView mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintPreference()V
    .locals 1

    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showSensorErrorDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b0674

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f0b0675

    :cond_0
    if-eqz v0, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0672

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method private updateTwChecklist(I)V
    .locals 3

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTwMultiSelected()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteFingerprint()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x10409ab

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v6

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteAllFingerprint()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    :goto_0
    return v6

    :cond_3
    return v6

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteSomeFingerprint()Z

    move-result v3

    if-nez v3, :cond_5

    return v6

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0b06a2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_6
    if-ne v1, v6, :cond_7

    const v3, 0x7f0b068d

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    const v4, 0x7f0b042a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_7
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0b068e

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected finishFingerprintSettings()V
    .locals 3

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings() : Null Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b18b0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public onBackKey()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "=====onBackKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate selectedIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate twselectedChecklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updatePreferences()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13

    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040109

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x10

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v3, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_0
    const v8, 0x7f110398

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f110397

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "current_sec_active_themepackage"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Theme : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", installed_theme_count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f110399

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a032a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0326

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f0b1076

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f0b042a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu : twselectedChecklist is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_3
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v1, v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "updateSelectMenu null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104a1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setDivider()V

    return-void
.end method

.method public renameFingerPrint()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

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

    invoke-direct {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->sendSurveyForRename()V

    return-void
.end method

.method protected sendSurveyForRename()V
    .locals 4

    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDivider()V
    .locals 9

    const v4, 0x7f0a0332

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v6, :cond_1

    :goto_0
    if-nez v6, :cond_2

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    move v6, v3

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

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

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032b

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0b06dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateSelectionState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateActionbarState()V

    return-void
.end method
