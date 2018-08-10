.class Lcom/samsung/android/graphics/SemImageFilter$3;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter;->killAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;

.field final synthetic val$animationId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$3;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemImageFilter$3;->val$animationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$3;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-wide v0, v0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    iget v2, p0, Lcom/samsung/android/graphics/SemImageFilter$3;->val$animationId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap2(JI)V

    return-void
.end method
