.class Lcom/samsung/android/media/SEFJNI;
.super Ljava/lang/Object;
.source "SEFJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SEF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I
.end method

.method static native addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I
.end method

.method static native addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I
.end method

.method static native addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I
.end method

.method static native addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I
.end method

.method static native addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I
.end method

.method static native addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I
.end method

.method static native clearQdioData(Ljava/lang/String;)I
.end method

.method static native clearSEFData(Ljava/lang/String;)I
.end method

.method static native copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static native deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static native fastClearSEFData(Ljava/lang/String;)I
.end method

.method static native fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static native getNativeVersion()I
.end method

.method static native getSEFDataCount(Ljava/lang/String;)I
.end method

.method static native getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method static native getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J
.end method

.method static native getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method static native getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J
.end method

.method static native isSEFFile(Ljava/lang/String;)I
.end method

.method static native listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method static native listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method static native listSEFDataTypes(Ljava/lang/String;)[I
.end method

.method static native saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I
.end method
