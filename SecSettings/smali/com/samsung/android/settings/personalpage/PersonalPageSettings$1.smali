.class Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;
.super Landroid/database/ContentObserver;
.source "PersonalPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "PersonalPageSettings"

    const-string/jumbo v3, "onChange() PersonalPage_SWITCH_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->-wrap0(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b037b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
