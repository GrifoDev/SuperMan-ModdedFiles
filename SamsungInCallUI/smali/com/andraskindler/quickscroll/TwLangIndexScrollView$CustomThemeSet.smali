.class public Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomThemeSet"
.end annotation


# instance fields
.field private applyOpenTheme:Z

.field private bgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private bigTextColor:I

.field private effectColor:I

.field private handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private handleTextColorPressed:I

.field private separatorColor:I

.field private smallTextColor:I

.field private textColorDimmed:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    iput p5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    iput-boolean p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput p7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return-void
.end method

.method static synthetic access$000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return v0
.end method

.method static synthetic access$200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    return v0
.end method

.method static synthetic access$300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
