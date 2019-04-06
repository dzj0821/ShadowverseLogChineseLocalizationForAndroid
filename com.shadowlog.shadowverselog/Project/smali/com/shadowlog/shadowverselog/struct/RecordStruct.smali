.class public Lcom/shadowlog/shadowverselog/struct/RecordStruct;
.super Ljava/lang/Object;
.source "RecordStruct.java"


# instance fields
.field public Deck_id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Deck_id"
    .end annotation
.end field

.field public User_id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "User_id"
    .end annotation
.end field

.field public _id:Ljava/lang/Integer;

.field public aid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aid"
    .end annotation
.end field

.field public delete_flag:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delete_flag"
    .end annotation
.end field

.field public format:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format"
    .end annotation
.end field

.field public insert_date:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insert_date"
    .end annotation
.end field

.field public local_update_date:J

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memo"
    .end annotation
.end field

.field public myDeckType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "myDeckType"
    .end annotation
.end field

.field public myLeader:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "myLeader"
    .end annotation
.end field

.field public ord:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ord"
    .end annotation
.end field

.field public play_date:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_date"
    .end annotation
.end field

.field public result:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field public turn:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "turn"
    .end annotation
.end field

.field public update_date:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_date"
    .end annotation
.end field

.field public vsDeckType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vsDeckType"
    .end annotation
.end field

.field public vsLeader:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vsLeader"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->_id:Ljava/lang/Integer;

    .line 15
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->local_update_date:J

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    .line 66
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    .line 70
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    .line 74
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    .line 78
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->delete_flag:J

    return-void
.end method

.method private convertDate(Ljava/lang/String;)J
    .locals 10
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 213
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-wide v4

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/text/ParseException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 217
    const-wide/16 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public putHash()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x7e90

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v1, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "aid"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "User_id"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "Deck_id"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_2
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "myLeader"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "myDeckType"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "vsLeader"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "vsDeckType"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "format"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_7
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "ord"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_8
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, "result"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_9
    const-string v3, "turn"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "memo"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "delete_flag"

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->delete_flag:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    .line 162
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    add-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 163
    .local v0, "date":Ljava/util/Date;
    const-string v3, "play_date"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v0    # "date":Ljava/util/Date;
    :cond_a
    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_b

    .line 166
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    add-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 167
    .restart local v0    # "date":Ljava/util/Date;
    const-string v3, "insert_date"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v0    # "date":Ljava/util/Date;
    :cond_b
    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_c

    .line 170
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    add-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 171
    .restart local v0    # "date":Ljava/util/Date;
    const-string v3, "update_date"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v0    # "date":Ljava/util/Date;
    :cond_c
    return-object v1
.end method

.method public putHash2()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "aid"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "User_id"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "Deck_id"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "myLeader"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "myDeckType"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "vsLeader"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "vsDeckType"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_6
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "format"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_7
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "ord"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_8
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "result"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_9
    const-string v1, "turn"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "memo"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "delete_flag"

    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->delete_flag:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "play_date"

    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "insert_date"

    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "update_date"

    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-object v0
.end method

.method public setHash(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->_id:Ljava/lang/Integer;

    goto :goto_0

    .line 89
    :sswitch_0
    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "User_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "Deck_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "myLeader"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "myDeckType"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "vsLeader"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "vsDeckType"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v5, "ord"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v5, "result"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "turn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "memo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "delete_flag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "update_date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "insert_date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "play_date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "local_update_date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    .line 91
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 92
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 93
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 94
    :pswitch_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 95
    :pswitch_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 96
    :pswitch_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 97
    :pswitch_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 98
    :pswitch_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 99
    :pswitch_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 100
    :pswitch_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 101
    :pswitch_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 102
    :pswitch_c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    goto/16 :goto_0

    .line 103
    :pswitch_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->delete_flag:J

    goto/16 :goto_0

    .line 106
    :pswitch_e
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "exp":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->convertDate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    goto/16 :goto_0

    .line 113
    .end local v1    # "exp":Ljava/lang/Exception;
    :pswitch_f
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .restart local v1    # "exp":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->convertDate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    goto/16 :goto_0

    .line 120
    .end local v1    # "exp":Ljava/lang/Exception;
    :pswitch_10
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .restart local v1    # "exp":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->convertDate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    goto/16 :goto_0

    .line 127
    .end local v1    # "exp":Ljava/lang/Exception;
    :pswitch_11
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->local_update_date:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 128
    :catch_3
    move-exception v1

    .line 129
    .restart local v1    # "exp":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->convertDate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->local_update_date:J

    goto/16 :goto_0

    .line 134
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "exp":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x7d360570 -> :sswitch_11
        -0x6ff00227 -> :sswitch_10
        -0x4ba00809 -> :sswitch_8
        -0x42e3fa80 -> :sswitch_d
        -0x40d99faf -> :sswitch_3
        -0x3ce0b22b -> :sswitch_4
        -0x37b237e3 -> :sswitch_a
        -0x22357a9c -> :sswitch_e
        -0x62d4e8c -> :sswitch_f
        0x171ba -> :sswitch_0
        0x1793c -> :sswitch_1
        0x1aee1 -> :sswitch_9
        0x33153a -> :sswitch_c
        0x36807d -> :sswitch_b
        0x2ca47e26 -> :sswitch_6
        0x3d3e894f -> :sswitch_5
        0x5a38e960 -> :sswitch_7
        0x5a7385ef -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
