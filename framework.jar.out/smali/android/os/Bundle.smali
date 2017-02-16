.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Bundle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field private static final FLAG_ALLOW_FDS:I = 0x400

.field private static final FLAG_HAS_FDS:I = 0x100

.field private static final FLAG_HAS_FDS_KNOWN:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 43
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 1100
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    .line 1099
    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 51
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 96
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 107
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    .line 62
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 63
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 60
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 70
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 71
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 118
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 85
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 83
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 128
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public static setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defusable"    # Z

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 186
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    .line 204
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 202
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const/4 v0, 0x1

    .line 1121
    :cond_0
    return v0
.end method

.method public filterValues()V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 314
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_3

    .line 315
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 316
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 317
    .local v1, "value":Ljava/lang/Object;
    invoke-static {v1}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 320
    :cond_1
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 321
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->filterValues()V

    .line 323
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 329
    .end local v0    # "i":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_3
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 330
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 312
    return-void
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1059
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1060
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1061
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1062
    return-object v3

    .line 1065
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1066
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "IBinder"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1068
    return-object v3
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 817
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 818
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 819
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 820
    return-object v3

    .line 823
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 824
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Bundle"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 826
    return-object v3
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 659
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 684
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1018
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 764
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 734
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1032
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1086
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1087
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1088
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1089
    return-object v3

    .line 1092
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1093
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "IBinder"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1095
    return-object v3
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 840
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 841
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 842
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 843
    return-object v3

    .line 846
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 847
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Parcelable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 849
    return-object v3
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 863
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 864
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 865
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 866
    return-object v3

    .line 869
    :cond_0
    :try_start_0
    check-cast v1, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 870
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Parcelable[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 872
    return-object v3
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 886
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 887
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 888
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 889
    return-object v3

    .line 892
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 893
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 895
    return-object v3
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 709
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1004
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method public getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 778
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 780
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 781
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Size"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 783
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 798
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 800
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 801
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "SizeF"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 803
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 910
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 911
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 912
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 913
    return-object v3

    .line 916
    :cond_0
    :try_start_0
    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 917
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "SparseArray"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 919
    return-object v3
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFileDescriptors()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 242
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, 0x200

    if-nez v9, :cond_1

    .line 243
    const/4 v3, 0x0

    .line 245
    .local v3, "fdFound":Z
    iget-object v9, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v9, :cond_3

    .line 246
    iget-object v9, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    const/4 v3, 0x1

    .line 298
    :cond_0
    :goto_0
    if-eqz v3, :cond_b

    .line 299
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    .line 303
    :goto_1
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v9, v9, 0x200

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    .line 305
    .end local v3    # "fdFound":Z
    :cond_1
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    return v8

    .line 251
    .restart local v3    # "fdFound":Z
    :cond_3
    iget-object v9, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    .line 252
    iget-object v9, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 253
    .local v6, "obj":Ljava/lang/Object;
    instance-of v9, v6, Landroid/os/Parcelable;

    if-eqz v9, :cond_4

    .line 254
    check-cast v6, Landroid/os/Parcelable;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    .line 256
    const/4 v3, 0x1

    .line 257
    goto :goto_0

    .line 259
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v9, v6, [Landroid/os/Parcelable;

    if-eqz v9, :cond_7

    move-object v2, v6

    .line 260
    check-cast v2, [Landroid/os/Parcelable;

    .line 261
    .local v2, "array":[Landroid/os/Parcelable;
    array-length v9, v2

    add-int/lit8 v5, v9, -0x1

    .local v5, "n":I
    :goto_3
    if-ltz v5, :cond_5

    .line 262
    aget-object v7, v2, v5

    .line 263
    .local v7, "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    .line 265
    const/4 v3, 0x1

    .line 251
    .end local v2    # "array":[Landroid/os/Parcelable;
    .end local v5    # "n":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 261
    .restart local v2    # "array":[Landroid/os/Parcelable;
    .restart local v5    # "n":I
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "p":Landroid/os/Parcelable;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 269
    .end local v2    # "array":[Landroid/os/Parcelable;
    .end local v5    # "n":I
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_7
    instance-of v9, v6, Landroid/util/SparseArray;

    if-eqz v9, :cond_9

    move-object v0, v6

    .line 271
    check-cast v0, Landroid/util/SparseArray;

    .line 272
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .restart local v5    # "n":I
    :goto_5
    if-ltz v5, :cond_5

    .line 273
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 274
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    .line 276
    const/4 v3, 0x1

    .line 277
    goto :goto_4

    .line 272
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 280
    .end local v0    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5    # "n":I
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_9
    instance-of v9, v6, Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    move-object v1, v6

    .line 281
    check-cast v1, Ljava/util/ArrayList;

    .line 284
    .local v1, "array":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/os/Parcelable;

    if-eqz v9, :cond_5

    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .restart local v5    # "n":I
    :goto_6
    if-ltz v5, :cond_5

    .line 286
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 287
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    .line 289
    const/4 v3, 0x1

    .line 290
    goto :goto_4

    .line 285
    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 301
    .end local v1    # "array":Ljava/util/ArrayList;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_b
    iget v9, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v9, v9, -0x101

    iput v9, p0, Landroid/os/Bundle;->mFlags:I

    goto/16 :goto_1
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 227
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 230
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 231
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 233
    :cond_0
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 234
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 224
    :cond_1
    return-void
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 618
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 599
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    .line 341
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    .line 538
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    .line 353
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 563
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    .line 562
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 390
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 586
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    .line 377
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 574
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 634
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 489
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 402
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 400
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 440
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 438
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 455
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 453
    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 462
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 460
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 526
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    .line 365
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 551
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    .line 550
    return-void
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 415
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 427
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 477
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 475
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 501
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1145
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 1146
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 1147
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 1144
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    .line 214
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 212
    :cond_0
    return-void
.end method

.method public setAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    .prologue
    .line 153
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 154
    .local v0, "orig":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 155
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 159
    :goto_1
    return v0

    .line 153
    .end local v0    # "orig":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "orig":Z
    goto :goto_0

    .line 157
    :cond_1
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 139
    return-void
.end method

.method public setDefusable(Z)V
    .locals 1
    .param p1, "defusable"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 173
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1154
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 1155
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-string/jumbo v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1158
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1159
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1159
    const-string/jumbo v1, "]"

    .line 1158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1162
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1131
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 1133
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1130
    return-void

    .line 1134
    :catchall_0
    move-exception v1

    .line 1135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1134
    throw v1
.end method
