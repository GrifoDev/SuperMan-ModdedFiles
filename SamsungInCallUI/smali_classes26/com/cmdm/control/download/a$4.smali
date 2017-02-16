.class Lcom/cmdm/control/download/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    iput-object p2, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->c(Lcom/cmdm/control/download/a;)Lcom/cmdm/control/download/Interface/d;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmdm/control/download/Interface/d;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "localPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/download/a$4;->br:Lcom/cmdm/control/download/a;

    iget-object v2, p0, Lcom/cmdm/control/download/a$4;->aK:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cmdm/control/download/a;->b(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method
