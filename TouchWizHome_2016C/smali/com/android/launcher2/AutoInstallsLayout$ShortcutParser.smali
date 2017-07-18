.class public Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;
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
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/launcher2/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 9

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const-string v6, "title"

    invoke-static {p1, v6, v8}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "icon"

    invoke-static {p1, v6, v8}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-static {v4}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-static {v5}, Lcom/android/launcher2/AutoInstallsLayout;->access$100(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v0, v5, v6, v7}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher2/HomeItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-static {v4}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "iconType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-static {v4}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "iconPackage"

    iget-object v6, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-static {v4}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "iconResource"

    iget-object v6, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v5, p0, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v5, v5, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/launcher2/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v4

    goto :goto_0
.end method

.method protected parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    const-string v2, "url"

    invoke-static {p1, v2}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method
