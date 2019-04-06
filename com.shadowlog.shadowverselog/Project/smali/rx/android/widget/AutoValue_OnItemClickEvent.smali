.class final Lrx/android/widget/AutoValue_OnItemClickEvent;
.super Lrx/android/widget/OnItemClickEvent;
.source "AutoValue_OnItemClickEvent.java"


# instance fields
.field private final id:J

.field private final parent:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private final position:I

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lrx/android/widget/OnItemClickEvent;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    .line 22
    if-nez p2, :cond_1

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    .line 26
    iput p3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    .line 27
    iput-wide p4, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    instance-of v3, p1, Lrx/android/widget/OnItemClickEvent;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 66
    check-cast v0, Lrx/android/widget/OnItemClickEvent;

    .line 67
    .local v0, "that":Lrx/android/widget/OnItemClickEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Lrx/android/widget/OnItemClickEvent;->parent()Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    .line 68
    invoke-virtual {v0}, Lrx/android/widget/OnItemClickEvent;->view()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    .line 69
    invoke-virtual {v0}, Lrx/android/widget/OnItemClickEvent;->position()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    .line 70
    invoke-virtual {v0}, Lrx/android/widget/OnItemClickEvent;->id()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lrx/android/widget/OnItemClickEvent;
    :cond_3
    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const v2, 0xf4243

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "h":I
    mul-int/2addr v0, v2

    .line 79
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 80
    mul-int/2addr v0, v2

    .line 81
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 82
    mul-int/2addr v0, v2

    .line 83
    iget v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    xor-int/2addr v0, v1

    .line 84
    mul-int/2addr v0, v2

    .line 85
    int-to-long v2, v0

    iget-wide v4, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    iget-wide v6, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 86
    return v0
.end method

.method public id()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    return-wide v0
.end method

.method public parent()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnItemClickEvent{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    return-object v0
.end method
