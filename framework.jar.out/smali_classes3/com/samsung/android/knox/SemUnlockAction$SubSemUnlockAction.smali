.class public Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;
.super Lcom/samsung/android/knox/SemIUnlockAction$Stub;
.source "SemUnlockAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemUnlockAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubSemUnlockAction"
.end annotation


# instance fields
.field parent:Lcom/samsung/android/knox/SemUnlockAction;

.field final synthetic this$0:Lcom/samsung/android/knox/SemUnlockAction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/SemUnlockAction;Lcom/samsung/android/knox/SemUnlockAction;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/knox/SemUnlockAction;
    .param p2, "semUnlockAction"    # Lcom/samsung/android/knox/SemUnlockAction;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;->this$0:Lcom/samsung/android/knox/SemUnlockAction;

    invoke-direct {p0}, Lcom/samsung/android/knox/SemIUnlockAction$Stub;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;->parent:Lcom/samsung/android/knox/SemUnlockAction;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;->parent:Lcom/samsung/android/knox/SemUnlockAction;

    .line 25
    return-void
.end method


# virtual methods
.method public onUnlock()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;->parent:Lcom/samsung/android/knox/SemUnlockAction;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;->parent:Lcom/samsung/android/knox/SemUnlockAction;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemUnlockAction;->onUnlock()V

    .line 30
    :cond_0
    return-void
.end method
