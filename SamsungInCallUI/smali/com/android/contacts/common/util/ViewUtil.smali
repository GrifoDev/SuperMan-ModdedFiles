.class public Lcom/android/contacts/common/util/ViewUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/view/ViewOutlineProvider;

.field private static final b:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->a:Landroid/view/ViewOutlineProvider;

    :goto_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$2;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->b:Landroid/view/ViewOutlineProvider;

    :goto_1
    return-void

    :cond_0
    sput-object v1, Lcom/android/contacts/common/util/ViewUtil;->a:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/android/contacts/common/util/ViewUtil;->b:Landroid/view/ViewOutlineProvider;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expecting view\'s width to be a constant rather than a result of the layout pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
