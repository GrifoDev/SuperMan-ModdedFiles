.class public Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;
.super Ljava/lang/Object;
.source "NotificationChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/NotificationChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationChannelWrapper"
.end annotation


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field final synthetic this$0:Lcom/android/settings/utils/NotificationChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/utils/NotificationChannelHelper;Landroid/app/NotificationChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;->this$0:Lcom/android/settings/utils/NotificationChannelHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;->mChannel:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public getImportance()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    return v0
.end method
