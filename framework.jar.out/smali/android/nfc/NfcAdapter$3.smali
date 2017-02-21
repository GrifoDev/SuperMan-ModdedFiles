.class Landroid/nfc/NfcAdapter$3;
.super Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->semSetRfPreset(Landroid/app/Activity;ILandroid/nfc/NfcAdapter$SemRfPresetResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$resultListener:Landroid/nfc/NfcAdapter$SemRfPresetResultListener;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$SemRfPresetResultListener;)V
    .locals 0

    iput-object p1, p0, Landroid/nfc/NfcAdapter$3;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$3;->val$resultListener:Landroid/nfc/NfcAdapter$SemRfPresetResultListener;

    invoke-direct {p0}, Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/nfc/NfcAdapter$3;->val$resultListener:Landroid/nfc/NfcAdapter$SemRfPresetResultListener;

    invoke-interface {v0, p1, p2}, Landroid/nfc/NfcAdapter$SemRfPresetResultListener;->onResult(IZ)V

    return-void
.end method
