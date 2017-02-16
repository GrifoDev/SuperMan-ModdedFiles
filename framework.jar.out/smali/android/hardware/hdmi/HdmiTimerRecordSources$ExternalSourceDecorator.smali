.class Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSourceDecorator"
.end annotation


# instance fields
.field private final mExternalSourceSpecifier:I

.field private final mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V
    .locals 2
    .param p1, "recordSource"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    .param p2, "externalSourceSpecifier"    # I

    .prologue
    .line 420
    iget v0, p1, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 421
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 422
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V
    .locals 0
    .param p1, "recordSource"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    .param p2, "externalSourceSpecifier"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 427
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 428
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 429
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v0

    return v0
.end method
