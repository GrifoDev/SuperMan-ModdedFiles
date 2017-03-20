.class Lcom/cmdm/control/download/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/download/a;->lock()V
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmdm/control/download/a$3;->br:Lcom/cmdm/control/download/a;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 366
    invoke-static {}, Lcom/cmdm/control/download/a;->bc()V

    .line 367
    return-void
.end method
