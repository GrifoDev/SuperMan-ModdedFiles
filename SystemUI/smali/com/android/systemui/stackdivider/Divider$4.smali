.class Lcom/android/systemui/stackdivider/Divider$4;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->setUserId(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$isRotation_270:Z

.field final synthetic val$mUid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput p2, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$mUid:I

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$isRotation_270:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$mUid:I

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$isRotation_270:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setUserId(IZ)V

    return-void
.end method
