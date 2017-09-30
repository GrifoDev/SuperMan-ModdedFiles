.class Lcom/cmdm/control/download/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/download/a;->execute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aK:Ljava/lang/String;

.field final synthetic br:Lcom/cmdm/control/download/a;


# direct methods
.method constructor <init>(Lcom/cmdm/control/download/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    iput-object p2, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    invoke-static {v0}, Lcom/cmdm/control/download/a;->c(Lcom/cmdm/control/download/a;)Lcom/cmdm/control/download/Interface/d;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cmdm/control/download/Interface/d;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    iget-object v2, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cmdm/control/download/a;->b(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
