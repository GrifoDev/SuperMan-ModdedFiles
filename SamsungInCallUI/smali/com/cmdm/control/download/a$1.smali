.class Lcom/cmdm/control/download/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic br:Lcom/cmdm/control/download/a;


# direct methods
.method constructor <init>(Lcom/cmdm/control/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/download/a$1;->br:Lcom/cmdm/control/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cmdm/control/download/a$d;

    iget-object v1, p0, Lcom/cmdm/control/download/a$1;->br:Lcom/cmdm/control/download/a;

    iget-object v2, v0, Lcom/cmdm/control/download/a$d;->by:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/cmdm/control/download/a$d;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/cmdm/control/download/a$d;->bs:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cmdm/control/download/a;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return v0
.end method
