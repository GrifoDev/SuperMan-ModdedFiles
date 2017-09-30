.class public Landroid/support/v4/app/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/support/v4/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/support/v4/app/u$a;

.field public d:Landroid/view/View;

.field final synthetic e:Landroid/support/v4/app/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/g;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/g$b;->e:Landroid/support/v4/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g$b;->a:Landroid/support/v4/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g$b;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/u$a;

    invoke-direct {v0}, Landroid/support/v4/app/u$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g$b;->c:Landroid/support/v4/app/u$a;

    return-void
.end method
