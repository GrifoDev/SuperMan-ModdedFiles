.class Lcom/samsung/android/settings/SmartStaySettings$3;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SmartStaySettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$3;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings$3;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method
