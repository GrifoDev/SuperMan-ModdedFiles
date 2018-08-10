.class public Lcom/samsung/android/dapservice/MlDap;
.super Ljava/lang/Object;
.source "MlDap.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "dapjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jcheckDeviceCert()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_checkDeviceCertificate()I

    move-result v0

    return v0
.end method

.method public jcheckIntegrity()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_checkIntegrity()I

    move-result v0

    return v0
.end method

.method public jdeleteDeviceKey()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_deleteDeviceKey()I

    move-result v0

    return v0
.end method

.method public jgenerateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->native_getSignature([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public jgetCACertificate(I[B)[B
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->native_getCACertificate(I[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "object is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public jgetDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public jgetExtendPCR([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->native_getExtendedPCR([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public jgetManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;

    move-result-object v0

    return-object v0
.end method

.method public jgetOEMFlag()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_getOemFlag()I

    move-result v0

    return v0
.end method

.method public jgetPCR()Lcom/samsung/android/dapmanager/BufferData;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_getPCR()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public jotaDeInitialize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_mlOtaDeInitialize()I

    move-result v0

    return v0
.end method

.method public jotaInitialize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dapservice/MlDap;->native_mlOtaInitialize()I

    move-result v0

    return v0
.end method

.method public jsaveDeviceCert([B[B[BIII)I
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/dapservice/MlDap;->native_saveDeviceCertificate([B[B[BIII)I

    move-result v0

    return v0
.end method

.method public native native_checkDeviceCertificate()I
.end method

.method public native native_checkIntegrity()I
.end method

.method public native native_deleteDeviceKey()I
.end method

.method public native native_getCACertificate(I[B)[B
.end method

.method public native native_getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;
.end method

.method public native native_getExtendedPCR([BI)Lcom/samsung/android/dapmanager/BufferData;
.end method

.method public native native_getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;
.end method

.method public native native_getOemFlag()I
.end method

.method public native native_getPCR()Lcom/samsung/android/dapmanager/BufferData;
.end method

.method public native native_getSignature([BI)Lcom/samsung/android/dapmanager/BufferData;
.end method

.method public native native_mlOtaDeInitialize()I
.end method

.method public native native_mlOtaInitialize()I
.end method

.method public native native_saveDeviceCertificate([B[B[BIII)I
.end method
