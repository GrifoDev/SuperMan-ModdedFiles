.class public Lcom/android/launcher2/AppSearchSettingActivity$AppSearchSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "AppSearchSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppSearchSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSearchSettingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppSearchSettingActivity$AppSearchSettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method
