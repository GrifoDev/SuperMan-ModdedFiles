.class public abstract Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordSource"
.end annotation


# instance fields
.field final mExtraDataSize:I

.field final mSourceType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "sourceType"    # I
    .param p2, "extraDataSize"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    .line 67
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    .line 65
    return-void
.end method


# virtual methods
.method abstract extraParamToByteArray([BI)I
.end method

.method final getDataSize(Z)I
    .locals 1
    .param p1, "includeType"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    goto :goto_0
.end method

.method final toByteArray(Z[BI)I
    .locals 2
    .param p1, "includeType"    # Z
    .param p2, "data"    # [B
    .param p3, "index"    # I

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 86
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .local v0, "index":I
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    move p3, v0

    .line 88
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->extraParamToByteArray([BI)I

    .line 89
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    return v1
.end method
