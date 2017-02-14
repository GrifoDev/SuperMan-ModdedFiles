.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->handleNext()V

    return-void
.end method
