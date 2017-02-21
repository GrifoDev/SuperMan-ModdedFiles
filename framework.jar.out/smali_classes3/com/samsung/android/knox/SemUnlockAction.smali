.class public abstract Lcom/samsung/android/knox/SemUnlockAction;
.super Ljava/lang/Object;
.source "SemUnlockAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;
    }
.end annotation


# instance fields
.field private s:Lcom/samsung/android/knox/SemIUnlockAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/knox/SemUnlockAction$SubSemUnlockAction;-><init>(Lcom/samsung/android/knox/SemUnlockAction;Lcom/samsung/android/knox/SemUnlockAction;)V

    iput-object v0, p0, Lcom/samsung/android/knox/SemUnlockAction;->s:Lcom/samsung/android/knox/SemIUnlockAction;

    return-void
.end method


# virtual methods
.method public getChild()Lcom/samsung/android/knox/SemIUnlockAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemUnlockAction;->s:Lcom/samsung/android/knox/SemIUnlockAction;

    return-object v0
.end method

.method public abstract onUnlock()V
.end method
