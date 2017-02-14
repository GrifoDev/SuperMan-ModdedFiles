.class Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;
.super Ljava/lang/Object;
.source "NearbyScanning.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->rect:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne v0, v8, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000b4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    const-string/jumbo v5, "NearbyScanning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SwitchBar, send Event Log : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", on/off ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v2, v8, :cond_2

    const-string/jumbo v3, "off 0)"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v5

    if-ne v2, v8, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, "on 1000)"

    goto :goto_1

    :cond_3
    const/16 v3, 0x3e8

    goto :goto_2
.end method
