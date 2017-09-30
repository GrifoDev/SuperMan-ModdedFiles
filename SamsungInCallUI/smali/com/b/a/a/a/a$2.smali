.class Lcom/b/a/a/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/b/a/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/b/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/a$2;->b:Lcom/b/a/a/a/a;

    iput-object p2, p0, Lcom/b/a/a/a/a$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/a$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
