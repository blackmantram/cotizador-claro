package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	
	import com.pixo.cotizadorclaro.controller.commands.InternetSelected;
	import com.pixo.cotizadorclaro.controller.commands.JumpNav;
	import com.pixo.cotizadorclaro.controller.commands.NextNav;
	import com.pixo.cotizadorclaro.controller.commands.PhoneSelected;
	import com.pixo.cotizadorclaro.controller.commands.PrevNav;
	import com.pixo.cotizadorclaro.controller.commands.TriplePlaySelected;
	import com.pixo.cotizadorclaro.controller.commands.TvSelected;
	import com.pixo.cotizadorclaro.controller.events.ConfigEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapCommands extends Command
	{
		override public function execute():void
		{
			commandMap.mapEvent(ConfigEvent.TV, TvSelected);
			commandMap.mapEvent(ConfigEvent.INTERNET, InternetSelected);
			commandMap.mapEvent(ConfigEvent.PHONE, PhoneSelected);
			commandMap.mapEvent(ConfigEvent.TRIPLE_PLAY, TriplePlaySelected);
			
			commandMap.mapEvent(NavEvent.NEXT, NextNav);
			commandMap.mapEvent(NavEvent.PREV, PrevNav);
			commandMap.mapEvent(NavEvent.JUMP, JumpNav, NavEvent);
			/*commandMap.mapEvent(SettingsEvent.MATCH_SETTINGS_CHANGED, UpdateMatchSettingsCommant, SettingsEvent);
			commandMap.mapEvent(SettingsEvent.TEAM_SETTINGS_CHANGED, UpdateTeamSettingsCommand, SettingsEvent);
			
			commandMap.mapEvent(RefereeingEvent.REFEREE, StartMatchCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, ExecutePenaltyCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, EndMatchCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, SkipTurnCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, ReverseCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, FreeKickCommand);
			commandMap.mapEvent(RefereeingEvent.REFEREE, FinishStepCommand);
			
			commandMap.mapEvent(MatchEvent.OFF_SIDE, ExecutePenaltyCommand);
			
			commandMap.mapEvent(MatchEvent.START, ShowQuestionCommand);
			commandMap.mapEvent(MatchEvent.STEP_FINISHED, ShowQuestionCommand);
			commandMap.mapEvent(MatchEvent.SCORE, ScoreCommand);
			commandMap.mapEvent(MatchEvent.SCORE, PauseCommand);
			
			commandMap.mapEvent(MatchEvent.RESUME, ResumeMatchCommand);
			commandMap.mapEvent(AnimationEvent.ANIMATION_FINISHED, ResumeMatchCommand);
			commandMap.mapEvent(AnimationEvent.ANIMATION_FINISHED, ExecuteSkipTurnCommand);
			commandMap.mapEvent(AnimationEvent.ANIMATION_FINISHED, ExecuteFaultCommand);
			commandMap.mapEvent(AnimationEvent.ANIMATION_FINISHED, ExecuteFreeKickCommand);
			
			commandMap.mapEvent(MovementEvent.MOVEMENT, MovementCommand);
			commandMap.mapEvent(TriviaEvent.SELECTED_ANSWER, CheckAnswerCommand, TriviaEvent);
			commandMap.mapEvent(TriviaEvent.SELECTED_ANSWER, NextStepCommand, TriviaEvent);
			
			commandMap.mapEvent(SpecialActionEvent.SPECIAL_ACTION_TRIGGERED, SpecialActionCommand, SpecialActionEvent);
			commandMap.mapEvent(SpecialActionEvent.SPECIAL_ACTION_STARTED, SelectSpecialActionCommand);
			commandMap.mapEvent(SpecialActionEvent.SPECIAL_ACTION_FINISHED, FinishSpecialActionCommand);
			
			commandMap.mapEvent(GameEvent.MATCH_SETTINGS, PlayAmbienceSoundCommand);
			commandMap.mapEvent(GameEvent.TEAM_SETTINGS, PlayLowAmbienceSoundCommand);
			commandMap.mapEvent(GameEvent.PREVIEW, PlayNormalAmbienceSoundCommand);
			commandMap.mapEvent(MatchEvent.MOVEMENT, PlayBallMovementSoundCommand);
			commandMap.mapEvent(GameEvent.GOTO_MATCH, StopLoopCommand);
			commandMap.mapEvent(GameEvent.RESTART, StopAllSoundsCommand);
			commandMap.mapEvent(RefereeingEvent.SHOW_REFEREE, PlayWhistleCommand);*/
		}
	}
}