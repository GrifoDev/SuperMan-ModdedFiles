.class public Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
.super Ljava/lang/RuntimeException;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidVersionException"
.end annotation


# instance fields
.field private final mTooNew:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;->mTooNew:Z

    return-void
.end method
