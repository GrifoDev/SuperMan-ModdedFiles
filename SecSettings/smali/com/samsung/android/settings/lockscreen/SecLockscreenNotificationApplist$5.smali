.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->initWhereToShowPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

.field final synthetic val$displayOptions:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->val$displayOptions:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-wrap0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_notifications_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->val$displayOptions:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0382

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method
