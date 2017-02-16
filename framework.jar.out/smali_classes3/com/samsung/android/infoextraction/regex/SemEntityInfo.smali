.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
    }
.end annotation


# instance fields
.field private dateInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emailAddressInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    .line 78
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    return-void
.end method

.method public deleteInfo(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    packed-switch p2, :pswitch_data_0

    .line 269
    return v1

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    return v2

    .line 215
    :cond_0
    return v1

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    return v2

    .line 223
    :cond_1
    return v1

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    return v2

    .line 231
    :cond_2
    return v1

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    return v2

    .line 239
    :cond_3
    return v1

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    return v2

    .line 247
    :cond_4
    return v1

    .line 251
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    return v2

    .line 255
    :cond_5
    return v1

    .line 259
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    return v2

    .line 263
    :cond_6
    return v1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 189
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 192
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    return-object v0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    return-object v0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    return-object v0

    .line 110
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    return-object v0

    .line 113
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    return-object v0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 130
    packed-switch p2, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
