.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;
.super Ljava/lang/Object;
.source "NavigationBarHardPressSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    :cond_0
    return-void
.end method
