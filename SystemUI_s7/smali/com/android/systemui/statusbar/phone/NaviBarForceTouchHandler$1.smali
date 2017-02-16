.class Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;
.super Ljava/lang/Object;
.source "NaviBarForceTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "NaviBarForceTouchHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NaviBar force touch action chagned. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->-get0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)[Landroid/net/Uri;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->-wrap0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
