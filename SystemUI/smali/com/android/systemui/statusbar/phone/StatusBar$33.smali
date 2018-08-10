.class Lcom/android/systemui/statusbar/phone/StatusBar$33;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsShortcutDrag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->mIsShortcutDrag:Z

    return-void
.end method
