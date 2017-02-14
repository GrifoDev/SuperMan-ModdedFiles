.class final Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/BigDataLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    return-void
.end method
