.class public Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;
.super Landroid/support/v14/preference/SecSwitchPreference;
.source "LockNotificationChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconPreference"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0217

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
