.class final Lrx/android/view/AutoValue_OnCheckedChangeEvent;
.super Lrx/android/view/OnCheckedChangeEvent;
.source "AutoValue_OnCheckedChangeEvent.java"


# instance fields
.field private final value:Z

.field private final view:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Lrx/android/view/OnCheckedChangeEvent;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    .line 17
    iput-boolean p2, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v3, p1, Lrx/android/view/OnCheckedChangeEvent;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 44
    check-cast v0, Lrx/android/view/OnCheckedChangeEvent;

    .line 45
    .local v0, "that":Lrx/android/view/OnCheckedChangeEvent;
    iget-object v3, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Lrx/android/view/OnCheckedChangeEvent;->view()Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    .line 46
    invoke-virtual {v0}, Lrx/android/view/OnCheckedChangeEvent;->value()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lrx/android/view/OnCheckedChangeEvent;
    :cond_3
    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "h":I
    mul-int/2addr v0, v2

    .line 55
    iget-object v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 56
    mul-int/2addr v0, v2

    .line 57
    iget-boolean v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    .line 58
    return v0

    .line 57
    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCheckedChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    return v0
.end method

.method public view()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method
