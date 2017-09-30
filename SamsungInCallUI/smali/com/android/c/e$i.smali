.class Lcom/android/c/e$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/c/e$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/c/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/android/c/e;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/c/e$i;->a:Lcom/android/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/c/e$i;->b:Ljava/util/List;

    iput p3, p0, Lcom/android/c/e$i;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/c/e$g;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/c/e$e;)Z
    .locals 2

    invoke-interface {p1}, Lcom/android/c/e$e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/c/e$i;->b:Ljava/util/List;

    iget v1, p0, Lcom/android/c/e$i;->c:I

    invoke-interface {p1, v0, v1}, Lcom/android/c/e$e;->a(Ljava/util/List;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
