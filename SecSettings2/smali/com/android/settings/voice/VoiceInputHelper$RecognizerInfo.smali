.class public Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
.super Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizerInfo"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    return-void
.end method
