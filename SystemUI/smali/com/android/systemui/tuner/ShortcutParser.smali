.class public Lcom/android/systemui/tuner/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPkg:Ljava/lang/String;

.field private final mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/systemui/tuner/ShortcutParser;->getResId(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    iput-object p3, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    return-void
.end method

.method private static getResId(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "android.app.shortcuts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "android.app.shortcuts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method private parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    sget-object v9, Lcom/android/internal/R$styleable;->Shortcut:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    new-instance v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    invoke-direct {v0}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    iput-object v3, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->name:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "intent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    invoke-static {v7, p1, v8}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_3

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getShortcuts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tuner/ShortcutParser$Shortcut;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget v6, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "shortcut"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/systemui/tuner/ShortcutParser;->parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v2
.end method
