.class Lcom/android/systemui/statusbar/phone/StatusBar$35;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDensityOrFontScaleChanged()V

    return-void
.end method
