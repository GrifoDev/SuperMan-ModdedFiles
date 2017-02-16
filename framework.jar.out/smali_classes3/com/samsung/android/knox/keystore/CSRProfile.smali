.class public Lcom/samsung/android/knox/keystore/CSRProfile;
.super Ljava/lang/Object;
.source "CSRProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/CSRProfile$1;,
        Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;,
        Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;,
        Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/keystore/CSRProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonName:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public domainComponent:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

.field public keyLength:I

.field public locality:Ljava/lang/String;

.field public organization:Ljava/lang/String;

.field public profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public state:Ljava/lang/String;

.field public templateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    .line 117
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 125
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    .line 134
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    .line 141
    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    .line 148
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    .line 230
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 231
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    .line 228
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    .line 117
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 125
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    .line 134
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    .line 141
    const/16 v1, 0x400

    iput v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    .line 148
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 176
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    .line 190
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    .line 239
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    if-nez v1, :cond_0

    .line 245
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    if-nez v1, :cond_1

    .line 255
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 259
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 264
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    if-nez v1, :cond_2

    .line 265
    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    .line 237
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "ex":Ljava/lang/IllegalArgumentException;
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 261
    .restart local v0    # "ex":Ljava/lang/IllegalArgumentException;
    iput-object v2, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/CSRProfile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CSRProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    if-nez v0, :cond_2

    .line 209
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
