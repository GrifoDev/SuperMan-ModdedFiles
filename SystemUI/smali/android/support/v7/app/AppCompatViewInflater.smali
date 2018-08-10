.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.widget."

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.view."

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.webkit."

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    move-object v3, p2

    goto :goto_0

    :catch_0
    move-exception v2

    return-object v5
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "view"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "class"

    invoke-interface {p3, v5, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v4, v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v6

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v7

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v6

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v7

    return-object v5

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v4, v6

    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v4, v7

    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v6

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v3, v7

    return-object v5

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v4, v6

    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v4, v7

    throw v3
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->View:[I

    invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :cond_0
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "AppCompatViewInflater"

    const-string/jumbo v4, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_3

    instance-of v3, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v3, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_3

    :cond_2
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p3

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    :cond_0
    if-nez p6, :cond_1

    if-eqz p7, :cond_2

    :cond_1
    invoke-static {p3, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    :cond_2
    if-eqz p8, :cond_3

    invoke-static {p3}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    :cond_3
    const/4 v1, 0x0

    const-string/jumbo v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    if-eq v0, p3, :cond_5

    invoke-direct {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    :cond_6
    return-object v1

    :cond_7
    const-string/jumbo v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_b
    const-string/jumbo v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v1, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_c
    const-string/jumbo v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v1, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v1, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_e
    const-string/jumbo v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v1, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v1, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Landroid/support/v7/widget/AppCompatSeekBar;

    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0
.end method
