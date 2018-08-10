.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final DEBUG:Z = false

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/StackTraceElement;

    sput-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    new-array v0, v3, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sput-object v0, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    return-void
.end method

.method static final consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_2
    return-void
.end method

.method private createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    sget-object v2, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    if-eqz v21, :cond_2

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_0

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 p2, v14

    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v2, "layout"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v2, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v2, "layout"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_1
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v4, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "attr"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    if-nez v2, :cond_5

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    :cond_5
    if-eqz v18, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    :cond_6
    if-nez v18, :cond_7

    const-string/jumbo v2, "layout"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    :cond_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_a

    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": No start tag found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    :cond_a
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_b
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    move-object v11, v6

    :try_start_2
    invoke-virtual/range {v7 .. v12}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    sget-object v2, Lcom/android/internal/R$styleable;->Include:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v19, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v19

    :goto_2
    if-nez v19, :cond_c

    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    :cond_c
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1, v6, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_d

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_d
    packed-switch v25, :pswitch_data_0

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception v15

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :pswitch_2
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_e
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v4, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private final verifyClassLoader(Ljava/lang/reflect/Constructor;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    if-ne v1, v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    sget-object v17, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/LayoutInflater;->verifyClassLoader(Ljava/lang/reflect/Constructor;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    const/4 v8, 0x0

    sget-object v17, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v7, 0x0

    const-wide/16 v18, 0x8

    :try_start_0
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    if-eqz p2, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    const-class v18, Landroid/view/View;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    :cond_1
    sget-object v17, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v17, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v14, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/16 v17, 0x1

    aput-object p3, v6, v17

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    instance-of v0, v15, Landroid/view/ViewStub;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object v0, v15

    check-cast v0, Landroid/view/ViewStub;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v17, v6, v17

    check-cast v17, Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v18, 0x8

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    :cond_5
    move-object/from16 v17, p1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    if-eqz p2, :cond_8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    const-class v18, Landroid/view/View;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_2

    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :try_start_2
    new-instance v13, Landroid/view/InflateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": Error inflating class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p2, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v12}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v17, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v17

    const-wide/16 v18, 0x8

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v17

    :cond_8
    move-object/from16 v17, p1

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    :try_start_3
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v9

    :try_start_4
    new-instance v13, Landroid/view/InflateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": Class is not a View "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p2, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v17, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v13

    :catch_2
    move-exception v11

    new-instance v13, Landroid/view/InflateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": Error inflating class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez v7, :cond_c

    const-string/jumbo v17, "<unknown>"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v17, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v13

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :catch_3
    move-exception v10

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .locals 16

    const-string/jumbo v13, "view"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "class"

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v14, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p5, :cond_2

    sget-object v13, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-eqz v11, :cond_1

    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 p3, v4

    :cond_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const-string/jumbo v13, "blink"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Landroid/view/LayoutInflater$BlinkLayout;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v13

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v13, v0, v1, v2, v3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v12

    :goto_0
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v13, v0, v1, v2, v3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v12

    :cond_4
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v9, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p3, v13, v14
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v13, 0x2e

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v14, v13, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    :cond_5
    return-object v12

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v13, v0, v1, v2}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    goto :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_0

    :cond_8
    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    goto :goto_1

    :catchall_0
    move-exception v13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    throw v13
    :try_end_4
    .catch Landroid/view/InflateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v5

    throw v5

    :catch_1
    move-exception v7

    new-instance v8, Landroid/view/InflateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": Error inflating class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v13, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v8, v13}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v8

    :catch_2
    move-exception v6

    new-instance v8, Landroid/view/InflateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": Error inflating class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v13, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v8, v13}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v8
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .locals 1

    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .locals 1

    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    const-string/jumbo v2, "inflate"

    const-wide/16 v18, 0x8

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v11, v2, v3

    check-cast v11, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p2

    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    :cond_1
    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": No start tag found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v9

    :try_start_2
    new-instance v10, Landroid/view/InflateException;

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v10, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-wide/16 v18, 0x8

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v17

    throw v2

    :cond_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    xor-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v8

    :try_start_5
    new-instance v10, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v10, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v17

    return-object v14

    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v5, v6}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v15

    const/4 v13, 0x0

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    if-nez p3, :cond_7

    invoke-virtual {v15, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v6, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_8
    if-eqz p2, :cond_9

    xor-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_5

    :cond_9
    move-object v14, v15

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_7

    :cond_1
    if-eq v4, v8, :cond_7

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "requestFocus"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "tag"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "include"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Landroid/view/InflateException;

    const-string/jumbo v8, "<include /> cannot be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "merge"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Landroid/view/InflateException;

    const-string/jumbo v8, "<merge /> must be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-direct {p0, p2, v1, p3, p4}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v5, p4, v8}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    invoke-virtual {v6, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->restoreDefaultFocus()Z

    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    :cond_9
    return-void
.end method

.method final rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_2

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, v3, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_2

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3

    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_0
.end method
