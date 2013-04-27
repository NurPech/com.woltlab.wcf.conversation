<div class="box48">
	{if $message->getUserProfile()->getAvatar()}
		<a href="{link controller='User' object=$message->getUserProfile()->getDecoratedObject()}{/link}" class="framed">{@$message->getUserProfile()->getAvatar()->getImageTag(48)}</a>
	{/if}

	<div>
		<div class="containerHeadline">
			<h3><a href="{link controller='User' object=$message->getUserProfile()->getDecoratedObject()}{/link}">{$message->username}</a> <small>- {@$message->time|time}</small></h3> 
		</div>
		
		<div>{@$message->getExcerpt()|nl2br}</div>
		
		{event name='previewData'}
	</div>
</div>