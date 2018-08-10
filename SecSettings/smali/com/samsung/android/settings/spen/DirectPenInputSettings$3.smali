.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const v12, 0x7f121421

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-set1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v1, 0x1

    :goto_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v0, 0x1

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "finger_magnifier"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    const/4 v4, 0x1

    :cond_0
    :goto_4
    if-nez v6, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get5(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v4, :cond_a

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f121425

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f120821

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f120823

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120080

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f120065

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7, v3, v5, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    return-void

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_a
    if-nez v6, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get5(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v8, 0x7f121424

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v3, v8, v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    goto :goto_5
.end method
