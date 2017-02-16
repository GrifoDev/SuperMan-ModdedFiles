.class Lcom/android/systemui/volume/SpTexts$1;
.super Ljava/lang/Object;
.source "SpTexts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SpTexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SpTexts;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SpTexts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    invoke-static {v1}, Lcom/android/systemui/volume/SpTexts;->-get0(Lcom/android/systemui/volume/SpTexts;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    invoke-static {v1}, Lcom/android/systemui/volume/SpTexts;->-get0(Lcom/android/systemui/volume/SpTexts;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    invoke-static {v2}, Lcom/android/systemui/volume/SpTexts;->-get0(Lcom/android/systemui/volume/SpTexts;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/android/systemui/volume/SpTexts;->-wrap0(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
