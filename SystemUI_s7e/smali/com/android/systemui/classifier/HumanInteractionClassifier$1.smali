.class Lcom/android/systemui/classifier/HumanInteractionClassifier$1;
.super Landroid/database/ContentObserver;
.source "HumanInteractionClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/HumanInteractionClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/HumanInteractionClassifier;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;->this$0:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;->this$0:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-static {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->-wrap0(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V

    return-void
.end method
