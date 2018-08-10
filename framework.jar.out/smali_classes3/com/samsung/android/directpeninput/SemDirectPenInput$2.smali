.class Lcom/samsung/android/directpeninput/SemDirectPenInput$2;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    return-void
.end method
