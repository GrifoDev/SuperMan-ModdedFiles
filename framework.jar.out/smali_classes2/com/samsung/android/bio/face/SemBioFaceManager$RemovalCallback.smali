.class public abstract Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 721
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/Face;)V
    .locals 0
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;

    .prologue
    .line 729
    return-void
.end method
