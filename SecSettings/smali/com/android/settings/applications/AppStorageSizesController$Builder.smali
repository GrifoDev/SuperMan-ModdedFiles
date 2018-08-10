.class public Lcom/android/settings/applications/AppStorageSizesController$Builder;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSizesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppSize:Landroid/support/v7/preference/Preference;

.field private mCacheSize:Landroid/support/v7/preference/Preference;

.field private mComputing:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mDataSize:Landroid/support/v7/preference/Preference;

.field private mError:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mTotalSize:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/applications/AppStorageSizesController;
    .locals 8

    new-instance v0, Lcom/android/settings/applications/AppStorageSizesController;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    iget v5, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    iget v6, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController;)V

    return-object v0
.end method

.method public setAppSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method public setCacheSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method public setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    return-object p0
.end method

.method public setDataSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method public setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    return-object p0
.end method

.method public setTotalSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroid/support/v7/preference/Preference;

    return-object p0
.end method
