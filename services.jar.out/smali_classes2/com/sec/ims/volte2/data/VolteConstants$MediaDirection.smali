.class public Lcom/sec/ims/volte2/data/VolteConstants$MediaDirection;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDirection"
.end annotation


# static fields
.field public static final INACTIVE:I = 0x1

.field public static final RECVONLY:I = 0x3

.field public static final SENDONLY:I = 0x2

.field public static final SENDRECV:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
