.class Landroid/support/v4/widget/f$b;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/f;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/f$b;->a:Landroid/support/v4/widget/f;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/f;Landroid/support/v4/widget/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/f$b;-><init>(Landroid/support/v4/widget/f;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/f$b;->a:Landroid/support/v4/widget/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/f;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/f$b;->a:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/f$b;->a:Landroid/support/v4/widget/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/f;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/f$b;->a:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->notifyDataSetInvalidated()V

    return-void
.end method
