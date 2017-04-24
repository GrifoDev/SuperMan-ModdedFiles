.class public Lcom/android/settings/users/UserPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "UserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserPreference$1;
    }
.end annotation


# static fields
.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/users/UserPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings/users/UserPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const v0, 0x7f040240

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method private dimIcon(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method

.method private getSerialNumber()I
    .locals 2

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    const v0, 0x7ffffffe

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0

    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    return v0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 12

    const/4 v9, 0x0

    const/16 v8, 0x8

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->isDisabledByAdmin()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserPreference;->dimIcon(Z)V

    const v7, 0x7f1105e4

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_4

    move v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "user"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const v7, 0x7f110581

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v7, 0x7f110580

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f11057e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    const v7, 0x7f11057c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_7

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-nez v7, :cond_6

    :goto_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move v9, v8

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
