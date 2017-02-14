.class public Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher2/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AutoInstallParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 6

    const-string v3, "packageName"

    invoke-static {p1, v3}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "className"

    invoke-static {p1, v3}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "restored"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/launcher2/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v4

    goto :goto_0
.end method
